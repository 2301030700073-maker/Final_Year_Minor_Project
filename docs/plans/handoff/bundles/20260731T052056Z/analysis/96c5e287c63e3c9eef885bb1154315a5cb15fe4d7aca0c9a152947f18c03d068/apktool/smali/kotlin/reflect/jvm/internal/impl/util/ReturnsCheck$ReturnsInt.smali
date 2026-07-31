.class public final Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;
.super Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    .line 2
    .line 3
    const-string v1, "Int"

    .line 4
    .line 5
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/util/Checks$2;->INSTANCE$7:Lkotlin/reflect/jvm/internal/impl/util/Checks$2;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/ReturnsCheck$ReturnsInt;

    .line 11
    .line 12
    return-void
.end method
