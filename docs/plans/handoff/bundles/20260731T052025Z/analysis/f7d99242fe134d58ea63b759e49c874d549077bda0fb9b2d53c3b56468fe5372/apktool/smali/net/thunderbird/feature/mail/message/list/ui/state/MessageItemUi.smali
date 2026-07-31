.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

.field public final active:Z

.field public final answered:Z

.field public final encrypted:Z

.field public final excerpt:Ljava/lang/String;

.field public final formattedReceivedAt:Ljava/lang/String;

.field public final forwarded:Z

.field public final hasAttachments:Z

.field public final id:Ljava/lang/String;

.field public final messageReference:Ljava/lang/String;

.field public final selected:Z

.field public final senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

.field public final starred:Z

.field public final state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

.field public final subject:Ljava/lang/String;

.field public final threadCount:I


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZIZ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 14
    .line 15
    iput-object p5, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 16
    .line 17
    iput-object p6, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p7, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p8, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p9, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 24
    .line 25
    iput-boolean p10, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 26
    .line 27
    iput-boolean p11, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 28
    .line 29
    iput-boolean p12, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 30
    .line 31
    iput-boolean p13, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 32
    .line 33
    iput-boolean p14, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 34
    .line 35
    iput p15, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 36
    .line 37
    move/from16 p1, p16

    .line 38
    .line 39
    iput-boolean p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 40
    .line 41
    return-void
.end method

.method public static copy$default(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;ZZI)Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 10
    .line 11
    move-object v4, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object/from16 v4, p1

    .line 14
    .line 15
    :goto_0
    iget-object v5, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v6, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v7, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 20
    .line 21
    and-int/lit8 v2, v1, 0x10

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 26
    .line 27
    move-object v8, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object/from16 v8, p2

    .line 30
    .line 31
    :goto_1
    iget-object v9, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v10, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v11, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 36
    .line 37
    iget-boolean v12, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 38
    .line 39
    iget-boolean v13, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 40
    .line 41
    iget-boolean v14, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 42
    .line 43
    iget-boolean v15, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 44
    .line 45
    iget-boolean v2, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 46
    .line 47
    and-int/lit16 v3, v1, 0x2000

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    iget-boolean v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 52
    .line 53
    move/from16 v17, v3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move/from16 v17, p3

    .line 57
    .line 58
    :goto_2
    iget v3, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 59
    .line 60
    const v16, 0x8000

    .line 61
    .line 62
    .line 63
    and-int v1, v1, v16

    .line 64
    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-boolean v1, v0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 68
    .line 69
    move/from16 v19, v1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move/from16 v19, p4

    .line 73
    .line 74
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move/from16 v18, v3

    .line 81
    .line 82
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 83
    .line 84
    move/from16 v16, v2

    .line 85
    .line 86
    invoke-direct/range {v3 .. v19}, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;-><init>(Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;Ljava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZIZ)V

    .line 87
    .line 88
    .line 89
    return-object v3
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
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;

    .line 12
    .line 13
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 14
    .line 15
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_2
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_3
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 46
    .line 47
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_5

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 58
    .line 59
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

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
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 102
    .line 103
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 104
    .line 105
    if-eq v0, v1, :cond_a

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_a
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 109
    .line 110
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 111
    .line 112
    if-eq v0, v1, :cond_b

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_b
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 116
    .line 117
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 118
    .line 119
    if-eq v0, v1, :cond_c

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_c
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 123
    .line 124
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 125
    .line 126
    if-eq v0, v1, :cond_d

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_d
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 130
    .line 131
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 132
    .line 133
    if-eq v0, v1, :cond_e

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_e
    iget-boolean v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 137
    .line 138
    iget-boolean v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 139
    .line 140
    if-eq v0, v1, :cond_f

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_f
    iget v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 144
    .line 145
    iget v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 146
    .line 147
    if-eq v0, v1, :cond_10

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_10
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 151
    .line 152
    iget-boolean p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 153
    .line 154
    if-eq p0, p1, :cond_11

    .line 155
    .line 156
    :goto_0
    const/4 p0, 0x0

    .line 157
    return p0

    .line 158
    :cond_11
    :goto_1
    const/4 p0, 0x1

    .line 159
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 23
    .line 24
    invoke-virtual {v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v0

    .line 29
    mul-int/2addr v2, v1

    .line 30
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 31
    .line 32
    invoke-virtual {v0}, Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v0, v2

    .line 37
    mul-int/2addr v0, v1

    .line 38
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 57
    .line 58
    const/16 v3, 0x4d5

    .line 59
    .line 60
    const/16 v4, 0x4cf

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    move v2, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v2, v3

    .line 67
    :goto_0
    add-int/2addr v0, v2

    .line 68
    mul-int/2addr v0, v1

    .line 69
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    move v2, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move v2, v3

    .line 76
    :goto_1
    add-int/2addr v0, v2

    .line 77
    mul-int/2addr v0, v1

    .line 78
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 79
    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    move v2, v4

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move v2, v3

    .line 85
    :goto_2
    add-int/2addr v0, v2

    .line 86
    mul-int/2addr v0, v1

    .line 87
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v2, v3

    .line 94
    :goto_3
    add-int/2addr v0, v2

    .line 95
    mul-int/2addr v0, v1

    .line 96
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    move v2, v4

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    move v2, v3

    .line 103
    :goto_4
    add-int/2addr v0, v2

    .line 104
    mul-int/2addr v0, v1

    .line 105
    iget-boolean v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    move v2, v4

    .line 110
    goto :goto_5

    .line 111
    :cond_5
    move v2, v3

    .line 112
    :goto_5
    add-int/2addr v0, v2

    .line 113
    mul-int/2addr v0, v1

    .line 114
    iget v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 115
    .line 116
    add-int/2addr v0, v2

    .line 117
    mul-int/2addr v0, v1

    .line 118
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 119
    .line 120
    if-eqz p0, :cond_6

    .line 121
    .line 122
    move v3, v4

    .line 123
    :cond_6
    add-int/2addr v0, v3

    .line 124
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MessageItemUi(state="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->state:Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi$State;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", id="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->id:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", messageReference="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->messageReference:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", account="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", senders="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->senders:Lnet/thunderbird/feature/mail/message/list/ui/state/ComposedAddressUi;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", subject="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->subject:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", excerpt="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", formattedReceivedAt="

    .line 69
    .line 70
    const-string v2, ", hasAttachments="

    .line 71
    .line 72
    iget-object v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->excerpt:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->formattedReceivedAt:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, ", starred="

    .line 80
    .line 81
    const-string v2, ", encrypted="

    .line 82
    .line 83
    iget-boolean v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->hasAttachments:Z

    .line 84
    .line 85
    iget-boolean v4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->starred:Z

    .line 86
    .line 87
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, ", answered="

    .line 91
    .line 92
    const-string v2, ", forwarded="

    .line 93
    .line 94
    iget-boolean v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->encrypted:Z

    .line 95
    .line 96
    iget-boolean v4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->answered:Z

    .line 97
    .line 98
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, ", selected="

    .line 102
    .line 103
    const-string v2, ", threadCount="

    .line 104
    .line 105
    iget-boolean v3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->forwarded:Z

    .line 106
    .line 107
    iget-boolean v4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->selected:Z

    .line 108
    .line 109
    invoke-static {v0, v3, v1, v4, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->threadCount:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, ", active="

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-boolean p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/MessageItemUi;->active:Z

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p0, ")"

    .line 128
    .line 129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method
