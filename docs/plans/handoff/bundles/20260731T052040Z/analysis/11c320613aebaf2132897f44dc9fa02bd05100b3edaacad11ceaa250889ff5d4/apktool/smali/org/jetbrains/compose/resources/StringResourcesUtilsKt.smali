.class public abstract Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final SimpleStringFormatRegex:Lkotlin/text/Regex;

.field public static final stringItemsCache:Lorg/jetbrains/compose/resources/AsyncCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "%(\\d+)\\$[ds]"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->SimpleStringFormatRegex:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/jetbrains/compose/resources/AsyncCache;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->stringItemsCache:Lorg/jetbrains/compose/resources/AsyncCache;

    .line 16
    .line 17
    return-void
.end method
