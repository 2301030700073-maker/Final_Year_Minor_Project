.class public final Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;
.super Ljava/lang/Object;
.source "ModuleConvertersBuilder.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/TypeConverterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->buildTypeConverterProvider()Lexpo/modules/kotlin/types/TypeConverterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1",
        "Lexpo/modules/kotlin/types/TypeConverterProvider;",
        "obtainTypeConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "type",
        "Lkotlin/reflect/KType;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $converterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KType;",
            "+",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;->$converterMap:Ljava/util/Map;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainTypeConverter(Lkotlin/reflect/KType;)Lexpo/modules/kotlin/types/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KType;",
            ")",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$buildTypeConverterProvider$1;->$converterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/types/TypeConverter;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/MissingTypeConverter;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/exception/MissingTypeConverter;-><init>(Lkotlin/reflect/KType;)V

    throw v0
.end method
