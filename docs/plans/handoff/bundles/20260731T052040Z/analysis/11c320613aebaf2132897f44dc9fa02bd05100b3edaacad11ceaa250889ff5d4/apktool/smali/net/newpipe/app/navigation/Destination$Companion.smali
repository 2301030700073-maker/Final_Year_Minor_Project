.class public final Lnet/newpipe/app/navigation/Destination$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $$INSTANCE:Lnet/newpipe/app/navigation/Destination$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/newpipe/app/navigation/Destination$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/newpipe/app/navigation/Destination$Companion;->$$INSTANCE:Lnet/newpipe/app/navigation/Destination$Companion;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 10
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
    const-class v0, Lnet/newpipe/app/navigation/Destination;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lnet/newpipe/app/navigation/Destination$About;

    .line 10
    .line 11
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lnet/newpipe/app/navigation/Destination$Settings;

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [Lkotlin/jvm/internal/ClassReference;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v1, v4, v5

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v2, v4, v1

    .line 29
    .line 30
    new-instance v2, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 31
    .line 32
    sget-object v6, Lnet/newpipe/app/navigation/Destination$About;->INSTANCE:Lnet/newpipe/app/navigation/Destination$About;

    .line 33
    .line 34
    new-array v7, v5, [Ljava/lang/annotation/Annotation;

    .line 35
    .line 36
    const-string v8, "net.newpipe.app.navigation.Destination.About"

    .line 37
    .line 38
    invoke-direct {v2, v8, v6, v7}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lnet/newpipe/app/navigation/Destination;[Ljava/lang/annotation/Annotation;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 42
    .line 43
    sget-object v7, Lnet/newpipe/app/navigation/Destination$Settings;->INSTANCE:Lnet/newpipe/app/navigation/Destination$Settings;

    .line 44
    .line 45
    new-array v8, v5, [Ljava/lang/annotation/Annotation;

    .line 46
    .line 47
    const-string v9, "net.newpipe.app.navigation.Destination.Settings"

    .line 48
    .line 49
    invoke-direct {v6, v9, v7, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Lnet/newpipe/app/navigation/Destination;[Ljava/lang/annotation/Annotation;)V

    .line 50
    .line 51
    .line 52
    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    .line 53
    .line 54
    aput-object v2, v3, v5

    .line 55
    .line 56
    aput-object v6, v3, v1

    .line 57
    .line 58
    new-array v1, v5, [Ljava/lang/annotation/Annotation;

    .line 59
    .line 60
    invoke-direct {p0, v0, v4, v3, v1}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Lkotlin/jvm/internal/ClassReference;[Lkotlin/jvm/internal/ClassReference;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method
