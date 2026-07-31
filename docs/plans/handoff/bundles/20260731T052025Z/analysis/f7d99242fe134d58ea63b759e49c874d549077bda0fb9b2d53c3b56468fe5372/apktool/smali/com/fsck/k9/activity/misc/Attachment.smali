.class public final Lcom/fsck/k9/activity/misc/Attachment;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/fsck/k9/message/Attachment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fsck/k9/activity/misc/Attachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final allowMessageType:Z

.field public final contentType:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final isInternalAttachment:Z

.field public final loaderId:I

.field public final name:Ljava/lang/String;

.field public final size:Ljava/lang/Long;

.field public final state:Lcom/fsck/k9/message/Attachment$LoadingState;

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/fragment/app/FragmentState$1;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentState$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/fsck/k9/activity/misc/Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 132
    iput-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 133
    iput p3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 134
    iput-object p4, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 135
    iput-boolean p5, p0, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 136
    iput-object p6, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 138
    iput-object p8, p0, Lcom/fsck/k9/activity/misc/Attachment;->fileName:Ljava/lang/String;

    .line 139
    iput-boolean p9, p0, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const-class v1, Landroid/net/Uri;

    .line 4
    .line 5
    const/16 v2, 0x21

    .line 6
    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/Uri;

    .line 18
    .line 19
    :goto_0
    move-object v4, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/net/Uri;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    const/4 v1, 0x0

    .line 33
    const-string v3, "Required value was null."

    .line 34
    .line 35
    if-eqz v4, :cond_6

    .line 36
    .line 37
    if-lt v0, v2, :cond_1

    .line 38
    .line 39
    const-class v0, Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 50
    .line 51
    :goto_2
    move-object v5, v0

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast v0, Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_3
    if-eqz v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v2, 0x0

    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    move v8, v3

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    move v8, v2

    .line 84
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_3
    move-object v10, v1

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    move v12, v3

    .line 114
    :goto_5
    move-object v3, p0

    .line 115
    goto :goto_6

    .line 116
    :cond_4
    move v12, v2

    .line 117
    goto :goto_5

    .line 118
    :goto_6
    invoke-direct/range {v3 .. v12}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_5
    invoke-static {v3}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :cond_6
    invoke-static {v3}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw v1
.end method


# virtual methods
.method public final deriveWithLoadCancelled()Lcom/fsck/k9/activity/misc/Attachment;
    .locals 10

    .line 1
    new-instance v0, Lcom/fsck/k9/activity/misc/Attachment;

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    iget-boolean v9, p0, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 7
    .line 8
    sget-object v2, Lcom/fsck/k9/message/Attachment$LoadingState;->CANCELLED:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 9
    .line 10
    iget v3, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 11
    .line 12
    iget-object v4, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 13
    .line 14
    iget-boolean v5, p0, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 15
    .line 16
    iget-object v6, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v7, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/fsck/k9/activity/misc/Attachment;-><init>(Landroid/net/Uri;Lcom/fsck/k9/message/Attachment$LoadingState;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/activity/misc/Attachment;->uri:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->state:Lcom/fsck/k9/message/Attachment$LoadingState;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->loaderId:I

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->contentType:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->allowMessageType:Z

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->name:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->size:Ljava/lang/Long;

    .line 35
    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p2, p0, Lcom/fsck/k9/activity/misc/Attachment;->fileName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-boolean p0, p0, Lcom/fsck/k9/activity/misc/Attachment;->isInternalAttachment:Z

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
