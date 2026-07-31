.class public interface abstract Lcoil3/decode/ExifOrientationStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/decode/ExifOrientationStrategy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/decode/ExifOrientationStrategy$Companion;

.field public static final IGNORE:Lcoil3/decode/ExifOrientationStrategy;

.field public static final RESPECT_ALL:Lcoil3/decode/ExifOrientationStrategy;

.field public static final RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcoil3/decode/ExifOrientationStrategy$Companion;->$$INSTANCE:Lcoil3/decode/ExifOrientationStrategy$Companion;

    .line 2
    .line 3
    sput-object v0, Lcoil3/decode/ExifOrientationStrategy;->Companion:Lcoil3/decode/ExifOrientationStrategy$Companion;

    .line 4
    .line 5
    new-instance v0, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcoil3/decode/ExifOrientationStrategy;->IGNORE:Lcoil3/decode/ExifOrientationStrategy;

    .line 12
    .line 13
    new-instance v0, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, v1}, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcoil3/decode/ExifOrientationStrategy;->RESPECT_PERFORMANCE:Lcoil3/decode/ExifOrientationStrategy;

    .line 20
    .line 21
    new-instance v0, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1}, Lcoil3/decode/ExifOrientationStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcoil3/decode/ExifOrientationStrategy;->RESPECT_ALL:Lcoil3/decode/ExifOrientationStrategy;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public abstract supports(Ljava/lang/String;Lokio/BufferedSource;)Z
.end method
