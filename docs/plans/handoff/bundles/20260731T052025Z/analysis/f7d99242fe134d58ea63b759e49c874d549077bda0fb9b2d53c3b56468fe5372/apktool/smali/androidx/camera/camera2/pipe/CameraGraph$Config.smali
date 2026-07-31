.class public final Landroidx/camera/camera2/pipe/CameraGraph$Config;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final camera:Ljava/lang/String;

.field public final defaultListeners:Ljava/util/List;

.field public final defaultParameters:Ljava/util/Map;

.field public final defaultTemplate:I

.field public final exclusiveStreamGroups:Ljava/util/List;

.field public final flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

.field public final graphStateListeners:Ljava/util/List;

.field public final input:Ljava/util/ArrayList;

.field public final metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

.field public final postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

.field public final requiredParameters:Ljava/util/Map;

.field public final sessionMode:I

.field public final sessionParameters:Ljava/util/Map;

.field public final sessionTemplate:I

.field public final streams:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/LinkedHashMap;ILkotlin/collections/builders/MapBuilder;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraGraph$Flags;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/MetadataTransform;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 17
    .line 18
    iput-object p4, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput-object p5, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 21
    .line 22
    iput p6, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 23
    .line 24
    iput-object p7, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 25
    .line 26
    iput p8, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 30
    .line 31
    iput-object p9, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 32
    .line 33
    iput-object p10, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 34
    .line 35
    iput-object p11, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 36
    .line 37
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 40
    .line 41
    iput-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 42
    .line 43
    iput-object p12, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_0

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

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
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 38
    .line 39
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_5

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 62
    .line 63
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 73
    .line 74
    iget v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 75
    .line 76
    if-ne v0, v1, :cond_e

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 79
    .line 80
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 81
    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_7

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_7
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 90
    .line 91
    iget v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 92
    .line 93
    if-ne v0, v1, :cond_e

    .line 94
    .line 95
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 96
    .line 97
    iget v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 98
    .line 99
    if-ne v0, v1, :cond_e

    .line 100
    .line 101
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 102
    .line 103
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_8

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_8
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 113
    .line 114
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_9

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 124
    .line 125
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 126
    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_a

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_a
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 135
    .line 136
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_b

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_b
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 146
    .line 147
    iget-object v1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_c

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_c
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 157
    .line 158
    iget-object p1, p1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 159
    .line 160
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-nez p0, :cond_d

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_d
    :goto_0
    const/4 p0, 0x1

    .line 168
    return p0

    .line 169
    :cond_e
    :goto_1
    const/4 p0, 0x0

    .line 170
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    iget-object v3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    move v3, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    iget-object v3, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    add-int/2addr v0, v2

    .line 45
    mul-int/2addr v0, v1

    .line 46
    iget v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 47
    .line 48
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, v0

    .line 57
    mul-int/2addr v2, v1

    .line 58
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 59
    .line 60
    add-int/2addr v2, v0

    .line 61
    mul-int/2addr v2, v1

    .line 62
    iget v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 63
    .line 64
    add-int/2addr v2, v0

    .line 65
    mul-int/2addr v2, v1

    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v0, v2

    .line 73
    mul-int/2addr v0, v1

    .line 74
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 75
    .line 76
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {v2, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/util/List;II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    add-int/2addr v2, v0

    .line 93
    mul-int/lit16 v2, v2, 0x745f

    .line 94
    .line 95
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 96
    .line 97
    iget-object v0, v0, Landroidx/camera/camera2/pipe/MetadataTransform;->transformFn:Landroidx/camera/camera2/pipe/MetadataTransform$1;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v0, v2

    .line 104
    mul-int/2addr v0, v1

    .line 105
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags;->hashCode()I

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    add-int/2addr p0, v0

    .line 112
    mul-int/2addr p0, v1

    .line 113
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Config(camera="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", streams="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", exclusiveStreamGroups="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->exclusiveStreamGroups:Ljava/util/List;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", input="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->input:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", postviewStream="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->postviewStream:Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", sessionTemplate="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionTemplate:I

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", sessionParameters="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", sessionMode="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionMode:I

    .line 87
    .line 88
    invoke-static {v1}, Landroidx/sqlite/SQLite;->toString-impl(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", defaultTemplate="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 101
    .line 102
    invoke-static {v1}, Landroidx/camera/camera2/pipe/RequestTemplate;->toString-impl(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", defaultParameters="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultParameters:Ljava/util/Map;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, ", defaultListeners="

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultListeners:Ljava/util/List;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", graphStateListeners="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->graphStateListeners:Ljava/util/List;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", requiredParameters="

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->requiredParameters:Ljava/util/Map;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, ", cameraBackendId="

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, "null"

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ", customCameraBackend=null, metadataTransform="

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->metadataTransform:Landroidx/camera/camera2/pipe/MetadataTransform;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, ", flags="

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 175
    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p0, ", sessionColorSpace="

    .line 180
    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const/16 p0, 0x29

    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method
