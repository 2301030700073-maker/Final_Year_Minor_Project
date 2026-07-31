.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final builder:Landroidx/navigation/NavOptions$Builder;

.field public inclusive:Z

.field public popUpToId:I

.field public popUpToRoute:Ljava/lang/String;

.field public saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 13
    .line 14
    return-void
.end method

.method public static popUpTo$default(Landroidx/navigation/NavOptionsBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToRoute:Ljava/lang/String;

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "Cannot pop up to an empty route"

    .line 22
    .line 23
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
