.class public final Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accounts:Lkotlinx/collections/immutable/ImmutableList;

.field public final config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

.field public final folders:Lkotlinx/collections/immutable/ImmutableList;

.field public final isLoading:Z

.field public final rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

.field public final selectedAccountId:Ljava/lang/String;

.field public final selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

.field public final selectedFolderId:Ljava/lang/String;

.field public final showAccountSelection:Z

.field public final showAccountSelector:Z


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 11
    .line 12
    iput-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p5, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 19
    .line 20
    iput-object p6, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 21
    .line 22
    iput-object p7, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p8, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 25
    .line 26
    iput-boolean p9, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 27
    .line 28
    iput-boolean p10, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 29
    .line 30
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZI)Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;
    .locals 11

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

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
    iget-boolean p2, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 15
    .line 16
    :cond_1
    move v2, p2

    .line 17
    and-int/lit8 p1, v0, 0x4

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p3, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 22
    .line 23
    :cond_2
    move-object v3, p3

    .line 24
    and-int/lit8 p1, v0, 0x8

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 29
    .line 30
    :cond_3
    move-object v4, p4

    .line 31
    and-int/lit8 p1, v0, 0x10

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 36
    .line 37
    move-object v5, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    move-object/from16 v5, p5

    .line 40
    .line 41
    :goto_0
    and-int/lit8 p1, v0, 0x20

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 46
    .line 47
    move-object v6, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    move-object/from16 v6, p6

    .line 50
    .line 51
    :goto_1
    and-int/lit8 p1, v0, 0x40

    .line 52
    .line 53
    if-eqz p1, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 56
    .line 57
    move-object v7, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_6
    move-object/from16 v7, p7

    .line 60
    .line 61
    :goto_2
    and-int/lit16 p1, v0, 0x80

    .line 62
    .line 63
    if-eqz p1, :cond_7

    .line 64
    .line 65
    iget-object p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 66
    .line 67
    move-object v8, p1

    .line 68
    goto :goto_3

    .line 69
    :cond_7
    move-object/from16 v8, p8

    .line 70
    .line 71
    :goto_3
    and-int/lit16 p1, v0, 0x100

    .line 72
    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    iget-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 76
    .line 77
    move v9, p1

    .line 78
    goto :goto_4

    .line 79
    :cond_8
    move/from16 v9, p9

    .line 80
    .line 81
    :goto_4
    and-int/lit16 p1, v0, 0x200

    .line 82
    .line 83
    if-eqz p1, :cond_9

    .line 84
    .line 85
    iget-boolean p1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 86
    .line 87
    move v10, p1

    .line 88
    goto :goto_5

    .line 89
    :cond_9
    move/from16 v10, p10

    .line 90
    .line 91
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 104
    .line 105
    invoke-direct/range {v0 .. v10}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;-><init>(Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZ)V

    .line 106
    .line 107
    .line 108
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
    instance-of v0, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 14
    .line 15
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 25
    .line 26
    iget-boolean v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 27
    .line 28
    if-eq v0, v1, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 32
    .line 33
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 54
    .line 55
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_6

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 65
    .line 66
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_7

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_8
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 87
    .line 88
    iget-object v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_9
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 98
    .line 99
    iget-boolean v1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 100
    .line 101
    if-eq v0, v1, :cond_a

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_a
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 105
    .line 106
    iget-boolean p1, p1, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 107
    .line 108
    if-eq p0, p1, :cond_b

    .line 109
    .line 110
    :goto_0
    const/4 p0, 0x0

    .line 111
    return p0

    .line 112
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 113
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 10
    .line 11
    const/16 v2, 0x4d5

    .line 12
    .line 13
    const/16 v3, 0x4cf

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    move v4, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    :goto_1
    add-int/2addr v1, v4

    .line 44
    mul-int/lit8 v1, v1, 0x1f

    .line 45
    .line 46
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 47
    .line 48
    invoke-virtual {v4}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    add-int/2addr v4, v1

    .line 53
    mul-int/lit8 v4, v4, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v1, v4

    .line 62
    mul-int/lit8 v1, v1, 0x1f

    .line 63
    .line 64
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    move v4, v0

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_2
    add-int/2addr v1, v4

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-object v4, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 78
    .line 79
    if-nez v4, :cond_3

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_3
    add-int/2addr v1, v0

    .line 87
    mul-int/lit8 v1, v1, 0x1f

    .line 88
    .line 89
    iget-boolean v0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    move v0, v3

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move v0, v2

    .line 96
    :goto_4
    add-int/2addr v1, v0

    .line 97
    mul-int/lit8 v1, v1, 0x1f

    .line 98
    .line 99
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 100
    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_5
    add-int/2addr v1, v2

    .line 105
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "State(config="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->config:Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", showAccountSelector="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelector:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accounts="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->accounts:Lkotlinx/collections/immutable/ImmutableList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", selectedAccountId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedAccountId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", rootFolder="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->rootFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", folders="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->folders:Lkotlinx/collections/immutable/ImmutableList;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", selectedFolderId="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", selectedFolder="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", showAccountSelection="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->showAccountSelection:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", isLoading="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean p0, p0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->isLoading:Z

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
