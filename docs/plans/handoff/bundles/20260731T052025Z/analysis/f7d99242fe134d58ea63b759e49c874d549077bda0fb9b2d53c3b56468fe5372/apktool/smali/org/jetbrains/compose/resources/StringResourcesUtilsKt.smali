.class public abstract Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SimpleStringFormatRegex:Lkotlin/text/Regex;

.field public static final stringItemsCache:Lorg/jsoup/internal/SoftPool;


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
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/jsoup/internal/SoftPool;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/jetbrains/compose/resources/StringResourcesUtilsKt;->stringItemsCache:Lorg/jsoup/internal/SoftPool;

    .line 16
    .line 17
    return-void
.end method
