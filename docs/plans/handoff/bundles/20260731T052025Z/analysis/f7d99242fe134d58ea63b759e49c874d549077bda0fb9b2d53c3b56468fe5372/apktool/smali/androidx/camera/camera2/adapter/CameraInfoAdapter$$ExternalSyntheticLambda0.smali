.class public final synthetic Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/camera/camera2/adapter/CameraInfoAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraInfoAdapter;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/camera2/adapter/CameraInfoAdapter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/camera/camera2/interop/Camera2CameraInfo;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 26
    .line 27
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_1
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 44
    .line 45
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 46
    .line 47
    iget-object v0, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->_physicalCameraIds:Lkotlin/Lazy;

    .line 48
    .line 49
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/util/Set;

    .line 54
    .line 55
    check-cast v0, Ljava/lang/Iterable;

    .line 56
    .line 57
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroidx/camera/camera2/pipe/CameraId;

    .line 77
    .line 78
    iget-object v2, v2, Landroidx/camera/camera2/pipe/CameraId;->value:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v3, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;

    .line 81
    .line 82
    new-instance v4, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-direct {v4, v2, v5}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    iget-object v5, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 89
    .line 90
    check-cast v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;

    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iget-object v6, v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->_physicalCameraIds:Lkotlin/Lazy;

    .line 96
    .line 97
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/util/Set;

    .line 102
    .line 103
    new-instance v7, Landroidx/camera/camera2/pipe/CameraId;

    .line 104
    .line 105
    invoke-direct {v7, v2}, Landroidx/camera/camera2/pipe/CameraId;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_0

    .line 113
    .line 114
    iget-object v5, v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraMetadata;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 115
    .line 116
    invoke-virtual {v5, v2}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-direct {v3, v4, v2}, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;-><init>(Lcom/fsck/k9/mailstore/LocalStore$8;Landroidx/camera/camera2/pipe/CameraMetadata;)V

    .line 121
    .line 122
    .line 123
    new-instance v2, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;

    .line 124
    .line 125
    invoke-direct {v2, v3}, Landroidx/camera/camera2/adapter/PhysicalCameraInfoAdapter;-><init>(Landroidx/camera/camera2/impl/CameraPipeCameraProperties;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v2}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string p0, " is not a valid physical camera on "

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0

    .line 166
    :cond_1
    return-object v1

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
