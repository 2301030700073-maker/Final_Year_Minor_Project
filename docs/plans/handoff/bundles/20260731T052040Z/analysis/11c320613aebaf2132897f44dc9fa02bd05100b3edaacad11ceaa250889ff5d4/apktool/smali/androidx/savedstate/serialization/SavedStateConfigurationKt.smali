.class public abstract Landroidx/savedstate/serialization/SavedStateConfigurationKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DEFAULT_SERIALIZERS_MODULE:Lcoil3/ComponentRegistry$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Landroidx/savedstate/serialization/serializers/SavedStateSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SavedStateSerializer;

    .line 9
    .line 10
    const-class v3, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 17
    .line 18
    invoke-direct {v4, v2}, Lkotlinx/serialization/modules/ContextualProvider$Argless;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v3, v4}, Lcoil3/ComponentRegistry$Builder;->registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V

    .line 22
    .line 23
    .line 24
    const-class v2, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-direct {v3, v4}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Lcoil3/ComponentRegistry$Builder;->contextual(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcoil3/ComponentRegistry$Builder;->build()Lcoil3/ComponentRegistry$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v2, Lcoil3/ComponentRegistry$Builder;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(I)V

    .line 46
    .line 47
    .line 48
    sget-object v3, Landroidx/savedstate/serialization/serializers/SizeSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeSerializer;

    .line 49
    .line 50
    const-class v4, Landroid/util/Size;

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    new-instance v5, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 57
    .line 58
    invoke-direct {v5, v3}, Lkotlinx/serialization/modules/ContextualProvider$Argless;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v2, v4, v5}, Lcoil3/ComponentRegistry$Builder;->registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    .line 65
    .line 66
    const-class v4, Landroid/util/SizeF;

    .line 67
    .line 68
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v5, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 73
    .line 74
    invoke-direct {v5, v3}, Lkotlinx/serialization/modules/ContextualProvider$Argless;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v4, v5}, Lcoil3/ComponentRegistry$Builder;->registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V

    .line 78
    .line 79
    .line 80
    const-class v3, Landroid/util/SparseArray;

    .line 81
    .line 82
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    new-instance v4, Landroidx/work/Data$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v5, 0x5

    .line 89
    invoke-direct {v4, v5}, Landroidx/work/Data$$ExternalSyntheticLambda0;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3, v4}, Lcoil3/ComponentRegistry$Builder;->contextual(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcoil3/ComponentRegistry$Builder;->build()Lcoil3/ComponentRegistry$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v3, Lkotlinx/serialization/modules/SerializersModuleKt;->EmptySerializersModule:Lcoil3/ComponentRegistry$Builder;

    .line 100
    .line 101
    new-instance v3, Lcoil3/ComponentRegistry$Builder;

    .line 102
    .line 103
    invoke-direct {v3, v1}, Lcoil3/ComponentRegistry$Builder;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lcoil3/ComponentRegistry$Builder;->dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Lcoil3/ComponentRegistry$Builder;->dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Lcoil3/ComponentRegistry$Builder;->build()Lcoil3/ComponentRegistry$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Landroidx/savedstate/serialization/SavedStateConfigurationKt;->DEFAULT_SERIALIZERS_MODULE:Lcoil3/ComponentRegistry$Builder;

    .line 117
    .line 118
    return-void
.end method
