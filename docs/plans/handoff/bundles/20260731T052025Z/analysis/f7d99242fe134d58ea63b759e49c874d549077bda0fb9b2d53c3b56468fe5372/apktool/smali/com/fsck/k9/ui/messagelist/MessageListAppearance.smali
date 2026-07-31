.class public final Lcom/fsck/k9/ui/messagelist/MessageListAppearance;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fsck/k9/ui/messagelist/MessageListAppearance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final backGroundAsReadIndicator:Z

.field public final dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

.field public final density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

.field public final fontSizes:Lcom/fsck/k9/FontSizes;

.field public final previewLines:I

.field public final senderAboveSubject:Z

.field public final showAccountIndicator:Z

.field public final showContactPicture:Z

.field public final showingThreadedList:Z

.field public final stars:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/FontSizes;IZZZZZZLnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 14
    .line 15
    iput p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 18
    .line 19
    iput-boolean p4, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 22
    .line 23
    iput-boolean p6, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 24
    .line 25
    iput-boolean p7, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 26
    .line 27
    iput-boolean p8, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 28
    .line 29
    iput-object p9, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 30
    .line 31
    iput-object p10, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

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
    instance-of v1, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

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
    check-cast p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 25
    .line 26
    iget v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 60
    .line 61
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 67
    .line 68
    iget-boolean v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 69
    .line 70
    if-eq v1, v3, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 74
    .line 75
    iget-object v3, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 76
    .line 77
    if-eq v1, v3, :cond_a

    .line 78
    .line 79
    return v2

    .line 80
    :cond_a
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 83
    .line 84
    if-eq p0, p1, :cond_b

    .line 85
    .line 86
    return v2

    .line 87
    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 15
    .line 16
    const/16 v2, 0x4d5

    .line 17
    .line 18
    const/16 v3, 0x4cf

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_1
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    move v1, v3

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v1, v2

    .line 45
    :goto_2
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v1, v2

    .line 55
    :goto_3
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    move v1, v2

    .line 65
    :goto_4
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    move v2, v3

    .line 73
    :cond_5
    add-int/2addr v0, v2

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v1, v0

    .line 83
    mul-int/lit8 v1, v1, 0x1f

    .line 84
    .line 85
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    add-int/2addr p0, v1

    .line 92
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageListAppearance(fontSizes="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->fontSizes:Lcom/fsck/k9/FontSizes;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", previewLines="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", stars="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", senderAboveSubject="

    .line 29
    .line 30
    const-string v2, ", showContactPicture="

    .line 31
    .line 32
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 33
    .line 34
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ", showingThreadedList="

    .line 40
    .line 41
    const-string v2, ", backGroundAsReadIndicator="

    .line 42
    .line 43
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 46
    .line 47
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, ", showAccountIndicator="

    .line 51
    .line 52
    const-string v2, ", density="

    .line 53
    .line 54
    iget-boolean v3, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 55
    .line 56
    iget-boolean v4, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 57
    .line 58
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", dateTimeFormat="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 72
    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p0, ")"

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->previewLines:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->stars:Z

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->senderAboveSubject:Z

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showContactPicture:Z

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showingThreadedList:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->backGroundAsReadIndicator:Z

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->showAccountIndicator:Z

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->density:Lnet/thunderbird/core/preference/display/visualSettings/message/list/UiDensity;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListAppearance;->dateTimeFormat:Lnet/thunderbird/core/preference/display/visualSettings/message/list/MessageListDateTimeFormat;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
