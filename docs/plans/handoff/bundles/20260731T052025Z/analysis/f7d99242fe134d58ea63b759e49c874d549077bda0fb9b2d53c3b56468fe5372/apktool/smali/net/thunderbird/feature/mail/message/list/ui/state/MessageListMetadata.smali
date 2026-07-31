.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

.field public final availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

.field public final focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

.field public final folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

.field public final footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

.field public final paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

.field public final showAccountIndicator:Z

.field public final sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

.field public final swipeActions:Lkotlinx/collections/immutable/PersistentMap;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lkotlinx/collections/immutable/ImmutableSet;Lkotlinx/collections/immutable/ImmutableSet;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZLnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 15
    .line 16
    iput-object p7, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 17
    .line 18
    iput-object p8, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 19
    .line 20
    iput-boolean p9, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 21
    .line 22
    iput-object p10, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 23
    .line 24
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;
    .locals 11

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 8
    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    and-int/lit8 p1, v0, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 15
    .line 16
    :cond_1
    move-object v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 22
    .line 23
    move-object v3, p1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move-object v3, p3

    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    and-int/lit8 p1, v0, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 34
    .line 35
    move-object v4, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move-object v4, p4

    .line 38
    :goto_1
    and-int/lit8 p1, v0, 0x20

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 43
    .line 44
    move-object v5, p1

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    move-object/from16 v5, p5

    .line 47
    .line 48
    :goto_2
    iget-object v6, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 49
    .line 50
    iget-object v7, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 51
    .line 52
    and-int/lit16 p1, v0, 0x100

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    iget-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 57
    .line 58
    move-object v8, p1

    .line 59
    goto :goto_3

    .line 60
    :cond_5
    move-object/from16 v8, p6

    .line 61
    .line 62
    :goto_3
    and-int/lit16 p1, v0, 0x200

    .line 63
    .line 64
    if-eqz p1, :cond_6

    .line 65
    .line 66
    iget-boolean p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 67
    .line 68
    move v9, p1

    .line 69
    goto :goto_4

    .line 70
    :cond_6
    move/from16 v9, p7

    .line 71
    .line 72
    :goto_4
    iget-object v10, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 84
    .line 85
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;Lkotlinx/collections/immutable/PersistentMap;Lkotlinx/collections/immutable/PersistentMap;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lkotlinx/collections/immutable/ImmutableSet;Lkotlinx/collections/immutable/ImmutableSet;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;ZLnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 14
    .line 15
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 25
    .line 26
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 36
    .line 37
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 47
    .line 48
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 58
    .line 59
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_6
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 69
    .line 70
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_7

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_7
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 80
    .line 81
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_8

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_8
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 91
    .line 92
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_9

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_9
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 102
    .line 103
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 104
    .line 105
    if-eq v0, v1, :cond_a

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_a
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 109
    .line 110
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_b

    .line 117
    .line 118
    :goto_0
    const/4 p0, 0x0

    .line 119
    return p0

    .line 120
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 121
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v2, v1

    .line 21
    mul-int/lit8 v2, v2, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v2

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    const/16 v2, 0x4d5

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    mul-int/lit8 v1, v1, 0x1f

    .line 36
    .line 37
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    move v3, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    :goto_1
    add-int/2addr v1, v3

    .line 48
    mul-int/lit8 v1, v1, 0x1f

    .line 49
    .line 50
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v3}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_2
    add-int/2addr v1, v0

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v1, v0

    .line 78
    mul-int/lit8 v1, v1, 0x1f

    .line 79
    .line 80
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 81
    .line 82
    invoke-virtual {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    const/16 v2, 0x4cf

    .line 94
    .line 95
    :cond_3
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 99
    .line 100
    invoke-virtual {p0}, Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    add-int/2addr p0, v0

    .line 105
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageListMetadata(folder="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->folder:Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", swipeActions="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->swipeActions:Lkotlinx/collections/immutable/PersistentMap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", sortCriteriaPerAccount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->sortCriteriaPerAccount:Lkotlinx/collections/immutable/PersistentMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isActive=false, activeMessage="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->activeMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", focusedMessage="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->focusedMessage:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", availablePrimarySortTypes="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availablePrimarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", availableSecondarySortTypes="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->availableSecondarySortTypes:Lkotlinx/collections/immutable/ImmutableSet;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", footer="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->footer:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListFooter;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", showAccountIndicator="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->showAccountIndicator:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", paging="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageListMetadata;->paging:Lnet/thunderbird/feature/mail/message/list/ui/state/PaginationUi;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, ")"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
