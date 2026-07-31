.class public final Lorg/minidns/edns/Edns;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public dnssecOk:Z

.field public flags:I

.field public optRecord:Ljava/lang/Object;

.field public terminalOutputCache:Ljava/lang/Object;

.field public udpPayloadSize:I

.field public variablePart:Ljava/lang/Object;

.field public version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/minidns/edns/Edns;->$r8$classId:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    const/4 v0, 0x2

    .line 63
    iput v0, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 64
    iput-object p1, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/edns/Edns$Builder;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/minidns/edns/Edns;->$r8$classId:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v1, p1, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    iput v1, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 56
    iput v0, p0, Lorg/minidns/edns/Edns;->version:I

    .line 57
    iget-boolean p1, p1, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    if-eqz p1, :cond_0

    const v0, 0x8000

    .line 58
    :cond_0
    iput-boolean p1, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 59
    iput v0, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 60
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/minidns/edns/Edns;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iget v1, p1, Lorg/minidns/record/Record;->clazzValue:I

    .line 8
    .line 9
    iput v1, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 10
    .line 11
    iget-wide v1, p1, Lorg/minidns/record/Record;->ttl:J

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    shr-long v3, v1, v3

    .line 16
    .line 17
    const-wide/16 v5, 0xff

    .line 18
    .line 19
    and-long/2addr v3, v5

    .line 20
    long-to-int v3, v3

    .line 21
    iput v3, p0, Lorg/minidns/edns/Edns;->version:I

    .line 22
    .line 23
    long-to-int v3, v1

    .line 24
    const v4, 0xffff

    .line 25
    .line 26
    .line 27
    and-int/2addr v3, v4

    .line 28
    iput v3, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 29
    .line 30
    const-wide/32 v3, 0x8000

    .line 31
    .line 32
    .line 33
    and-long/2addr v1, v3

    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    cmp-long v1, v1, v3

    .line 37
    .line 38
    if-lez v1, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    :cond_0
    iput-boolean v0, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 42
    .line 43
    iget-object v0, p1, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 44
    .line 45
    check-cast v0, Lorg/minidns/record/OPT;

    .line 46
    .line 47
    iget-object v0, v0, Lorg/minidns/record/OPT;->variablePart:Ljava/util/List;

    .line 48
    .line 49
    iput-object v0, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p1, p0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public build()Lcom/takisoft/colorpicker/ColorPickerDialog$Params;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const v1, 0x7f03000a

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    iput v2, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColorIndex:I

    .line 31
    .line 32
    iget-boolean v2, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 33
    .line 34
    iget-object v3, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, [I

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    array-length v2, v3

    .line 41
    new-array v3, v2, [Ljava/lang/Integer;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    :goto_0
    if-ge v5, v2, :cond_1

    .line 46
    .line 47
    iget-object v6, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v6, [I

    .line 50
    .line 51
    aget v6, v6, v5

    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    aput-object v6, v3, v5

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v5, Landroidx/viewpager/widget/ViewPager$1;

    .line 63
    .line 64
    const/16 v6, 0x15

    .line 65
    .line 66
    invoke-direct {v5, v6}, Landroidx/viewpager/widget/ViewPager$1;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    new-array v5, v2, [I

    .line 73
    .line 74
    :goto_1
    if-ge v4, v2, :cond_2

    .line 75
    .line 76
    aget-object v6, v3, v4

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    aput v6, v5, v4

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iput-object v5, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    iput-object v3, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColors:[I

    .line 91
    .line 92
    :goto_2
    iget-object v2, p0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, [Ljava/lang/CharSequence;

    .line 95
    .line 96
    iput-object v2, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColorContentDescriptions:[Ljava/lang/CharSequence;

    .line 97
    .line 98
    iget v2, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 99
    .line 100
    iput v2, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSelectedColor:I

    .line 101
    .line 102
    iget v2, p0, Lorg/minidns/edns/Edns;->version:I

    .line 103
    .line 104
    iput v2, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mColumns:I

    .line 105
    .line 106
    iget p0, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 107
    .line 108
    iput p0, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSize:I

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    if-ne p0, v2, :cond_4

    .line 112
    .line 113
    const p0, 0x7f07005b

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    iput p0, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSwatchLength:I

    .line 121
    .line 122
    const p0, 0x7f07005c

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    iput p0, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mMarginSize:I

    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_4
    const p0, 0x7f07005e

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    iput p0, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mSwatchLength:I

    .line 140
    .line 141
    const p0, 0x7f07005d

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    iput p0, v1, Lcom/takisoft/colorpicker/ColorPickerDialog$Params;->mMarginSize:I

    .line 149
    .line 150
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lorg/minidns/edns/Edns;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/List;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "EDNS: version: "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lorg/minidns/edns/Edns;->version:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ", flags:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v2, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-string v2, " do"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    const-string v2, "; udp: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    const/16 v2, 0xa

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lorg/minidns/edns/EdnsOption;

    .line 83
    .line 84
    invoke-virtual {v3}, Lorg/minidns/edns/EdnsOption;->getOptionCode()Lorg/minidns/edns/Edns$OptionCode;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, ": "

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v4, v3, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    invoke-virtual {v3}, Lorg/minidns/edns/EdnsOption;->asTerminalOutputInternal()Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    iput-object v4, v3, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    .line 109
    .line 110
    :cond_2
    iget-object v3, v3, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_1

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/Object;

    .line 130
    .line 131
    :cond_4
    iget-object p0, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p0, Ljava/lang/String;

    .line 134
    .line 135
    return-object p0

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
