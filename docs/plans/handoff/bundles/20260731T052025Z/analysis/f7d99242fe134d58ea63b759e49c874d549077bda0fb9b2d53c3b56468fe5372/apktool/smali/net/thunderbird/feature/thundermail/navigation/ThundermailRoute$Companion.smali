.class public final Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $$INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Companion;->$$INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Companion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    .line 1
    new-instance p0, Lkotlinx/serialization/SealedClassSerializer;

    .line 2
    .line 3
    const-class v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-class v3, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$OnboardComplete;

    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-class v4, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions;

    .line 28
    .line 29
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-class v5, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 34
    .line 35
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const-class v6, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 40
    .line 41
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x6

    .line 46
    new-array v8, v7, [Lkotlin/reflect/KClass;

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    aput-object v1, v8, v9

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    aput-object v2, v8, v1

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    aput-object v3, v8, v2

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    aput-object v4, v8, v3

    .line 59
    .line 60
    const/4 v4, 0x4

    .line 61
    aput-object v5, v8, v4

    .line 62
    .line 63
    const/4 v5, 0x5

    .line 64
    aput-object v6, v8, v5

    .line 65
    .line 66
    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 67
    .line 68
    sget-object v10, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$IncomingSettings;

    .line 69
    .line 70
    new-array v11, v9, [Ljava/lang/annotation/Annotation;

    .line 71
    .line 72
    const-string v12, "net.thunderbird.feature.thundermail.navigation.ThundermailRoute.IncomingSettings"

    .line 73
    .line 74
    invoke-direct {v6, v12, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 75
    .line 76
    .line 77
    new-instance v10, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 78
    .line 79
    sget-object v11, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 80
    .line 81
    new-array v12, v9, [Ljava/lang/annotation/Annotation;

    .line 82
    .line 83
    const-string v13, "net.thunderbird.feature.thundermail.navigation.ThundermailRoute.ScanQrCode"

    .line 84
    .line 85
    invoke-direct {v10, v13, v11, v12}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 86
    .line 87
    .line 88
    new-instance v11, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 89
    .line 90
    sget-object v12, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 91
    .line 92
    new-array v13, v9, [Ljava/lang/annotation/Annotation;

    .line 93
    .line 94
    const-string v14, "net.thunderbird.feature.thundermail.navigation.ThundermailRoute.SignInWithThundermail"

    .line 95
    .line 96
    invoke-direct {v11, v14, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    .line 97
    .line 98
    .line 99
    new-array v7, v7, [Lkotlinx/serialization/KSerializer;

    .line 100
    .line 101
    sget-object v12, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup$$serializer;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$AccountSetup$$serializer;

    .line 102
    .line 103
    aput-object v12, v7, v9

    .line 104
    .line 105
    aput-object v6, v7, v1

    .line 106
    .line 107
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$OnboardComplete$$serializer;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$OnboardComplete$$serializer;

    .line 108
    .line 109
    aput-object v1, v7, v2

    .line 110
    .line 111
    sget-object v1, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions$$serializer;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$Permissions$$serializer;

    .line 112
    .line 113
    aput-object v1, v7, v3

    .line 114
    .line 115
    aput-object v10, v7, v4

    .line 116
    .line 117
    aput-object v11, v7, v5

    .line 118
    .line 119
    new-array v1, v9, [Ljava/lang/annotation/Annotation;

    .line 120
    .line 121
    const-string v2, "net.thunderbird.feature.thundermail.navigation.ThundermailRoute"

    .line 122
    .line 123
    invoke-direct {p0, v2, v0, v8, v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lkotlinx/serialization/SealedClassSerializer;->_annotations:Ljava/util/List;

    .line 134
    .line 135
    return-object p0
.end method
