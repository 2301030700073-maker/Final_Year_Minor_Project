.class public final Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;
.super Ljava/lang/Object;
.source "TypeConverterCollection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/modules/ModuleConvertersBuilder;->TypeConverter(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/TypeConverterComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "TType;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeConverterCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection$from$1\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ModuleConvertersBuilder.kt\nexpo/modules/kotlin/modules/ModuleConvertersBuilder\n*L\n1#1,82:1\n11#2:83\n29#3:84\n*S KotlinDebug\n*F\n+ 1 TypeConverterCollection.kt\nexpo/modules/kotlin/types/TypeConverterCollection$from$1\n*L\n42#1:83\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $body$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;->$body$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TType;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lexpo/modules/kotlin/modules/ModuleConvertersBuilder$TypeConverter$lambda$1$$inlined$from$1;->$body$inlined:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
