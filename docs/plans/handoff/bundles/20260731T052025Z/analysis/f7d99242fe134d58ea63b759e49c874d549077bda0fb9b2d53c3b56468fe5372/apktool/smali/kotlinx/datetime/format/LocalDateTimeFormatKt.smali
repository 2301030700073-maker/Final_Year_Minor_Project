.class public abstract Lkotlinx/datetime/format/LocalDateTimeFormatKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ISO_DATETIME$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptyIncompleteLocalDateTime:Lkotlinx/datetime/format/IncompleteLocalDateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lkotlinx/datetime/format/LocalDateTimeFormatKt;->ISO_DATETIME$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalDateTime;

    .line 16
    .line 17
    invoke-direct {v0}, Lkotlinx/datetime/format/IncompleteLocalDateTime;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lkotlinx/datetime/format/LocalDateTimeFormatKt;->emptyIncompleteLocalDateTime:Lkotlinx/datetime/format/IncompleteLocalDateTime;

    .line 21
    .line 22
    return-void
.end method
