.class public abstract Lkotlinx/datetime/format/LocalDateFormatKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ISO_DATE$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final ISO_DATE_BASIC$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final emptyIncompleteLocalDate:Lkotlinx/datetime/format/IncompleteLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lkotlinx/datetime/format/LocalDateFormatKt;->ISO_DATE$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 13
    .line 14
    new-instance v0, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lkotlinx/datetime/UtcOffsetJvmKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lkotlinx/datetime/format/LocalDateFormatKt;->ISO_DATE_BASIC$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 27
    .line 28
    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 29
    .line 30
    invoke-direct {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lkotlinx/datetime/format/LocalDateFormatKt;->emptyIncompleteLocalDate:Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 34
    .line 35
    return-void
.end method
