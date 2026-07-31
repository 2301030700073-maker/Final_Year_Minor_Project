.class public final Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Ljava/lang/Object;

.field public final messageReference:Ljava/lang/Object;

.field public final messageViewOnly:Z

.field public final noThreading:Z

.field public final search:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lokio/PriorityQueue;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->search:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->account:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageReference:Ljava/lang/Object;

    .line 44
    iput-boolean p4, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->noThreading:Z

    .line 45
    iput-boolean p5, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageViewOnly:Z

    return-void
.end method

.method public constructor <init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;ZZI)V
    .locals 2

    .line 1
    and-int/lit8 v0, p6, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p6, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_1
    and-int/lit8 v0, p6, 0x8

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    move p4, v1

    .line 18
    :cond_2
    and-int/lit8 p6, p6, 0x10

    .line 19
    .line 20
    if-eqz p6, :cond_3

    .line 21
    .line 22
    move p5, v1

    .line 23
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->search:Ljava/lang/Object;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->account:Ljava/lang/Object;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageReference:Ljava/lang/Object;

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->noThreading:Z

    .line 36
    .line 37
    iput-boolean p5, p0, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageViewOnly:Z

    .line 38
    .line 39
    return-void
.end method
