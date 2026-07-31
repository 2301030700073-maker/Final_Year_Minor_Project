.class public final Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# instance fields
.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Arrangement$Vertical;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    const-string v1, "Array is empty."

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget v2, p3, v0

    .line 11
    .line 12
    array-length v3, p3

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    array-length v1, p3

    .line 16
    const/4 v3, 0x1

    .line 17
    sub-int/2addr v1, v3

    .line 18
    aget v1, p3, v1

    .line 19
    .line 20
    add-int v4, v2, v1

    .line 21
    .line 22
    sub-int v4, p2, v4

    .line 23
    .line 24
    array-length v5, p3

    .line 25
    sub-int/2addr v5, v3

    .line 26
    array-length v6, p3

    .line 27
    invoke-static {v5, v6}, Landroidx/work/OperationKt;->copyOfRangeToIndexCheck(II)V

    .line 28
    .line 29
    .line 30
    invoke-static {p3, v3, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    array-length v5, p4

    .line 38
    sub-int/2addr v5, v3

    .line 39
    array-length v6, p4

    .line 40
    invoke-static {v5, v6}, Landroidx/work/OperationKt;->copyOfRangeToIndexCheck(II)V

    .line 41
    .line 42
    .line 43
    invoke-static {p4, v3, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lapp/k9mail/core/ui/compose/designsystem/template/LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 51
    .line 52
    invoke-interface {p0, p1, v4, p3, v5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 53
    .line 54
    .line 55
    array-length p0, v5

    .line 56
    move p1, v0

    .line 57
    move p3, p1

    .line 58
    :goto_0
    if-ge p1, p0, :cond_0

    .line 59
    .line 60
    aget v4, v5, p1

    .line 61
    .line 62
    add-int/2addr p3, v3

    .line 63
    add-int/2addr v4, v2

    .line 64
    aput v4, p4, p3

    .line 65
    .line 66
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    aput v0, p4, v0

    .line 70
    .line 71
    array-length p0, p4

    .line 72
    sub-int/2addr p0, v3

    .line 73
    sub-int/2addr p2, v1

    .line 74
    aput p2, p4, p0

    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final bridge getSpacing-D9Ej5fM()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
