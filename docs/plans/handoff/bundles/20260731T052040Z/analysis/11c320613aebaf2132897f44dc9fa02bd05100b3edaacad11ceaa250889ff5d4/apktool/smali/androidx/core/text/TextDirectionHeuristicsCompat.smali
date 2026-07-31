.class public abstract Landroidx/core/text/TextDirectionHeuristicsCompat;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final FIRSTSTRONG_LTR:Lkotlinx/serialization/json/internal/Composer;

.field public static final FIRSTSTRONG_RTL:Lkotlinx/serialization/json/internal/Composer;

.field public static final LTR:Lkotlinx/serialization/json/internal/Composer;

.field public static final RTL:Lkotlinx/serialization/json/internal/Composer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/Composer;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Lkotlinx/serialization/json/internal/Composer;

    .line 9
    .line 10
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Lkotlinx/serialization/json/internal/Composer;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Lkotlinx/serialization/json/internal/Composer;

    .line 17
    .line 18
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 19
    .line 20
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;->INSTANCE:Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/Composer;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lkotlinx/serialization/json/internal/Composer;

    .line 26
    .line 27
    new-instance v0, Lkotlinx/serialization/json/internal/Composer;

    .line 28
    .line 29
    invoke-direct {v0, v1, v3}, Lkotlinx/serialization/json/internal/Composer;-><init>(Landroidx/core/text/TextDirectionHeuristicsCompat$FirstStrong;Z)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lkotlinx/serialization/json/internal/Composer;

    .line 33
    .line 34
    return-void
.end method
