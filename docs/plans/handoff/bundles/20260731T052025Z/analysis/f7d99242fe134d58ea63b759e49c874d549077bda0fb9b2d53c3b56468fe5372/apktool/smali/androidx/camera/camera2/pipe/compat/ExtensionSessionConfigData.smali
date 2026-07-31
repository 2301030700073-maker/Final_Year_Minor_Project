.class public final Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

.field public final extensionMode:Ljava/lang/Integer;

.field public final extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

.field public final outputConfigurations:Ljava/util/ArrayList;

.field public final postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

.field public final sessionParameters:Ljava/util/Map;

.field public final sessionTemplateId:I

.field public final stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/camera/camera2/pipe/core/HandlerExecutor;Landroidx/camera/camera2/pipe/compat/CaptureSessionState;ILjava/util/Map;Ljava/lang/Integer;Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 15
    .line 16
    iput p4, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 17
    .line 18
    iput-object p5, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 19
    .line 20
    iput-object p6, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 21
    .line 22
    iput-object p7, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 23
    .line 24
    iput-object p8, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 26
    .line 27
    if-eq v0, v2, :cond_3

    .line 28
    .line 29
    return v1

    .line 30
    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 31
    .line 32
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    iget v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 42
    .line 43
    iget v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 44
    .line 45
    if-eq v0, v2, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 49
    .line 50
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_6

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 60
    .line 61
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_7

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_7
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 71
    .line 72
    iget-object v2, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 73
    .line 74
    if-eq v0, v2, :cond_8

    .line 75
    .line 76
    return v1

    .line 77
    :cond_8
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 78
    .line 79
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 80
    .line 81
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_9

    .line 86
    .line 87
    :goto_0
    return v1

    .line 88
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 89
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v1, v0, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/2addr v1, v2

    .line 19
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/2addr v0, v2

    .line 27
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/2addr v0, v2

    .line 31
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    mul-int/2addr v1, v2

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/2addr v0, v2

    .line 47
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    mul-int/2addr v1, v2

    .line 55
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 56
    .line 57
    if-nez p0, :cond_0

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    :goto_0
    add-int/2addr v1, p0

    .line 66
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ExtensionSessionConfigData(sessionType=2, outputConfigurations="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->outputConfigurations:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", executor="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->executor:Landroidx/camera/camera2/pipe/core/HandlerExecutor;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", stateCallback="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->stateCallback:Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", sessionTemplateId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionTemplateId:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", sessionParameters="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->sessionParameters:Ljava/util/Map;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", extensionMode="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionMode:Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", extensionStateCallback="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->extensionStateCallback:Landroidx/camera/camera2/pipe/compat/ExtensionSessionState;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", postviewOutputConfiguration="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;->postviewOutputConfiguration:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p0, 0x29

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0
.end method
